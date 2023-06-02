import merge from 'lodash.merge';
import GraphQLJSON from 'graphql-type-json';
import { makeExecutableSchema } from 'graphql-tools';

import { mergeSchemas } from './utilities';

import {
	RecordTypeMutations,
	RecordTypeQueries,
	RecordTypeDef,
	// RecordsDef,
	// RecordsQueries,
	// RecordsMutations
} from './swarch2023i/categories/typeDefs';

//from './swarch2023i/categories/typeDefs';

import categoryResolvers from './swarch2023i/categories/resolvers';

//from './swarch2023i/categories/resolvers';

// merge the typeDefs
const mergedTypeDefs = mergeSchemas(
	[
		'scalar JSON',
		RecordTypeDef
	],
	[
		RecordTypeQueries
	],
	[
		RecordTypeMutations
	]
	// ,[
	// 	'scalar JSON',
	// 	RecordsDef
	// ],
	// [
	// 	RecordsQueries
	// ],
	// [
	// 	RecordsMutations
	// ]
);

// Generate the schema object from your types definition.
export default makeExecutableSchema({
	typeDefs: mergedTypeDefs,
	resolvers: merge(
		{ JSON: GraphQLJSON }, // allows scalar JSON
		categoryResolvers
	)
});
